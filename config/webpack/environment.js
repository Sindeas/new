const { environment } = require('@rails/webpacker')

const path = require('path')

const customConfig = {
  resolve: {
    alias: {
      '@src': path.resolve(__dirname, '..', '..', 'app/javascript/src'),
<<<<<<< HEAD
      '@utils': path.resolve(__dirname, '..', '..', 'app/javascript/src/utils'),
=======
>>>>>>> 39c46d16aa142e15f83696bc35785e6188988778
    }
  }
}

<<<<<<< HEAD
const webpack = require('webpack')

environment.plugins.prepend(

  "Environment",

  new webpack.EnvironmentPlugin(

    JSON.parse(

      JSON.stringify({

        STRIPE_PUBLISHABLE_KEY: process.env.STRIPE_PUBLISHABLE_KEY,

        URL: process.env.URL

      })

    )

  )

);

=======
>>>>>>> 39c46d16aa142e15f83696bc35785e6188988778
environment.config.merge(customConfig);

environment.splitChunks()

module.exports = environment
