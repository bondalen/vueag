<template>
    <!-- если массив постов существуе, то отображаем этот раздел -->
    <div v-if="posts">
        <v-data-table
            v-model:items-per-page="itemsPerPage"
                :headers="headers"
                :items="data" item-value="userId"
            class="elevation-1">
        </v-data-table>
    </div>
  </template>

  <script>
  // импортируем компонент таблицы данных из файловой системы
  import { VDataTable } from 'vuetify/lib/components/index.mjs' //lib/components/VDataTable.mjs'
  import getAllPosts from '../services/getAllPosts'
  
  export default {
    components: {
        // включаем компонент таблицы данных в файловую в наш компонент описываемый данным файлом
      VDataTable,
    },

    //как я понимаю, здесь функция срабатывающая при загрузке компонента
    // которая устанавливает его состояние
    setup() {
  
      const { posts, error, load } = getAllPosts()
      load()
      console.log(posts.value);
      return {
        posts,
        error,
        itemsPerPage: 10,
        // вот здесь определяем заголовки таблицы
        headers: [
          { title: 'User Id',   align: 'start',     sortable: false,    key: 'userId'},
          { title: 'Title',     align: 'start',                         key: 'title' },
          { title: 'Body',      align: 'start',                         key: 'body' }
        ],
        data: posts,
      }
  
    },
  }
  </script>
  <style lang="">
  
  </style>