//
//  MovieChannelHandler.swift
//  CNIOAtomics
//
//  Created by Steven Prichard on 1/14/19.
//

import Foundation
import NIO

class MovieClientHandler: ChannelInboundHandler {
    typealias InboundIn = ByteBuffer
    typealias OutboundOut = ByteBuffer
    private var numBytes = 0
    
    
    func channelActive(ctx: ChannelHandlerContext) {
        var movie = Movie()
        movie.genre = .action
        movie.title = "Avengers: Infinity War"
        movie.year = 2018
        
        do {
            let binaryData: Data = try movie.serializedData()
            
            var buffer = ctx.channel.allocator.buffer(capacity: binaryData.count)
            
            buffer.write(bytes: binaryData)
            
             // create a promise and close the channel when the promise is fulfilled
            let promise: EventLoopPromise<Void> = ctx.eventLoop.newPromise()
            promise.futureResult.whenComplete {
                print("Send data, closing channel")
                ctx.close(promise: nil)
            }
            
            // write and flush
            ctx.writeAndFlush(wrapOutboundOut(buffer), promise: promise)
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func errorCaught(ctx: ChannelHandlerContext, error: Error) {
        print("error: \(error.localizedDescription)")
        ctx.close(promise: nil)
    }
    
}


