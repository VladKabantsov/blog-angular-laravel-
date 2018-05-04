<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ArticlesRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'size'          => 'required|numeric',
            'skip'          => 'required|numeric',
            'category_id'   => 'exists:categories,id|numeric',
            'user_id'       => 'exists:users,id|numeric',
            'keyWord'       => 'string',
        ];
    }
}
