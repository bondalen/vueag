<template>
  <!-- 3. И вот здесь, наконец, отрисовали -->
  <DataTable />
</template>

<script>
// 1. Вот здесь мы вытащили компонент из файловой системы
import DataTable from './components/DataTable.vue';

export default {
  name: 'App',
  components: {
    // 2. Здесь мы добавили его в приложение vue
    DataTable
  }
}
</script>
