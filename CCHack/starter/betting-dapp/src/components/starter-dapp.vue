<template>
 <hello-metamask/>
</template>
<script>
  import HelloMetamask from '@/components/hello-metamask'
  export default {
     name: 'starter-dapp',
     beforeCreate () {
        console.log('registerWeb3 Action dispatched from starter-dapp.vue')
        this.$store.dispatch('registerWeb3')
     },
     components: {
     'hello-metamask': HelloMetamask
     }
  }
</script>
<style scoped>
</style>
