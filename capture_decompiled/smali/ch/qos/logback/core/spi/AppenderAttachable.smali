.class public interface abstract Lch/qos/logback/core/spi/AppenderAttachable;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addAppender(Lch/qos/logback/core/Appender;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender;",
            ")V"
        }
    .end annotation
.end method

.method public abstract detachAndStopAllAppenders()V
.end method

.method public abstract detachAppender(Lch/qos/logback/core/Appender;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract detachAppender(Ljava/lang/String;)Z
.end method

.method public abstract getAppender(Ljava/lang/String;)Lch/qos/logback/core/Appender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/Appender;"
        }
    .end annotation
.end method

.method public abstract isAttached(Lch/qos/logback/core/Appender;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract iteratorForAppenders()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lch/qos/logback/core/Appender;",
            ">;"
        }
    .end annotation
.end method
