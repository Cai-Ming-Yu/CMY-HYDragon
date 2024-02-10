package tokyo.caimingyu.hydragon

import java.io.File
import java.net.URI

private abstract class server {
    companion object {
        fun run(args: Array<String>) {
            if (args.isEmpty()) {
                println("Nothing to do.")
                return
            }
            when {
                args[0] == "dl" -> {
                    when (args.size) {
                        2 -> {
                            println(URI(args[1]).toURL().readText())
                        }

                        3 -> {
                            File(args[2]).writeText(URI(args[1]).toURL().readText())
                        }

                        else -> {
                            println("Nothing to do.")
                        }
                    }
                }

                else -> {
                    println("Nothing to do.")
                }
            }
            return
        }
    }
}

fun main(args: Array<String>) {
    server.run(args)
    return
}