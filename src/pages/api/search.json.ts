// Simple search API
import { getCollection } from "astro:content";

export async function GET() {
  try {
    const posts = await getCollection("blog");

    const searchData = posts.map((post: any) => ({
      slug: post.slug,
      title: post.data.title,
      description: post.data.description,
      tags: post.data.tags || [],
    }));

    return new Response(JSON.stringify(searchData), {
      status: 200,
      headers: {
        "Content-Type": "application/json",
        "Cache-Control": "public, max-age=3600",
      },
    });
  } catch (error) {
    return new Response(JSON.stringify({ error: "Search failed" }), {
      status: 500,
      headers: { "Content-Type": "application/json" },
    });
  }
}
