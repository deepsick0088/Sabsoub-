.class public abstract Lch/qos/logback/classic/turbo/TurboFilter;
.super Lch/qos/logback/core/spi/ContextAwareBase;

# interfaces
.implements Lch/qos/logback/core/spi/LifeCycle;


# instance fields
.field private name:Ljava/lang/String;

.field start:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/turbo/TurboFilter;->start:Z

    return-void
.end method


# virtual methods
.method public abstract decide(Ljava/util/List;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/slf4j/Marker;",
            ">;",
            "Lch/qos/logback/classic/Logger;",
            "Lch/qos/logback/classic/Level;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ")",
            "Lch/qos/logback/core/spi/FilterReply;"
        }
    .end annotation
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/classic/turbo/TurboFilter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lch/qos/logback/classic/turbo/TurboFilter;->start:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lch/qos/logback/classic/turbo/TurboFilter;->name:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/classic/turbo/TurboFilter;->start:Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/turbo/TurboFilter;->start:Z

    return-void
.end method
