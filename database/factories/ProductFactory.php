<?php

namespace Database\Factories;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Color;
use App\Models\Size;
use App\Models\Subcategory;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {

        $sizeIds = Size::pluck('id')->toArray();
        $brandIds = Brand::pluck('id')->toArray();
        $categoryIds = Category::pluck('id')->toArray();
        $subcategoryIds = Subcategory::wheheIn('category_id', $categoryIds[array_rand($categoryIds)])->pluck('id')->toArray();
        $colorIds = Color::pluck('id')->toArray();
        return [
            "user_id"         => auth()->user()->id,
            "product_name"    => $this->faker->sentence(5),
            "brand_id"        => $brandIds[array_rand($brandIds)],
            "category_id"     => $categoryIds[array_rand($categoryIds)],
            "subcategory_id"  => $subcategoryIds[array_rand($subcategoryIds)],
        ];
    }
}
