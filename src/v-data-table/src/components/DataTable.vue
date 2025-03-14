<template lang="">
    <div v-if="posts">
        <h4>{{console.log(posts.value)}}</h4>
    </div>
</template>

<script>
import getAllPosts from '@/services/getAllPosts';

export default {

    setup() {

        const { post, error, load } = getAllPosts()
        load()

        return { post, error, load }
    }
    
}
</script>

<style lang="">
    
</style>