/* global Vue axios */ //> from vue.html
const $ = sel => document.querySelector(sel)
const GET = (url) => axios.get('/todo'+url)

const todo = Vue.createApp ({

    data() {
        return {
          list: [],
          detail: undefined,
          message: {},
        }
    },

    methods: {

        search: ({target:{value:v}}) => todo.fetch(v && '&$search='+v),

        async fetch (etc='') {
            const {data} = await GET(`/TodoList?${etc}`)
            todo.list = data.value
        },

        async inspect (event) {
            const task = todo.detail = todo.list [event.currentTarget.rowIndex-1]
            const res = await GET(`/TodoList(ID=${task.ID},IsActiveEntity=true)`)
        },

    },

}).mount("#app")


todo.fetch()
