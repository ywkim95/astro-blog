import type { APIRoute } from "astro";
import { getCollection } from "astro:content";

export const GET: APIRoute = async () => {
  const posts = await getCollection("blog");

  // 모든 태그 수집
  const allTags = posts.flatMap((post: any) => post.data.tags || []);
  const uniqueTags = [...new Set(allTags)];

  return new Response(JSON.stringify(uniqueTags), {
    status: 200,
    headers: {
      "Content-Type": "application/json",
    },
  });
};
