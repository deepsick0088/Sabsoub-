.class public abstract Lch/qos/logback/core/AppenderBase;
.super Lch/qos/logback/core/spi/ContextAwareBase;

# interfaces
.implements Lch/qos/logback/core/Appender;


# static fields
.field static final ALLOWED_REPEATS:I = 0x5


# instance fields
.field private exceptionCount:I

.field private fai:Lch/qos/logback/core/spi/FilterAttachableImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/spi/FilterAttachableImpl;"
        }
    .end annotation
.end field

.field private guard:Z

.field protected name:Ljava/lang/String;

.field protected volatile started:Z

.field private statusRepeatCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/AppenderBase;->started:Z

    iput-boolean v0, p0, Lch/qos/logback/core/AppenderBase;->guard:Z

    new-instance v1, Lch/qos/logback/core/spi/FilterAttachableImpl;

    invoke-direct {v1}, Lch/qos/logback/core/spi/FilterAttachableImpl;-><init>()V

    iput-object v1, p0, Lch/qos/logback/core/AppenderBase;->fai:Lch/qos/logback/core/spi/FilterAttachableImpl;

    iput v0, p0, Lch/qos/logback/core/AppenderBase;->statusRepeatCount:I

    iput v0, p0, Lch/qos/logback/core/AppenderBase;->exceptionCount:I

    return-void
.end method


# virtual methods
.method public addFilter(Lch/qos/logback/core/filter/Filter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/filter/Filter;",
            ")V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/AppenderBase;->fai:Lch/qos/logback/core/spi/FilterAttachableImpl;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/FilterAttachableImpl;->addFilter(Lch/qos/logback/core/filter/Filter;)V

    return-void
.end method

.method protected abstract append(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public clearAllFilters()V
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/AppenderBase;->fai:Lch/qos/logback/core/spi/FilterAttachableImpl;

    invoke-virtual {v0}, Lch/qos/logback/core/spi/FilterAttachableImpl;->clearAllFilters()V

    return-void
.end method

.method public declared-synchronized doAppend(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lch/qos/logback/core/AppenderBase;->guard:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1
    iput-boolean v1, p0, Lch/qos/logback/core/AppenderBase;->guard:Z

    iget-boolean v1, p0, Lch/qos/logback/core/AppenderBase;->started:Z

    if-nez v1, :cond_2

    iget p1, p0, Lch/qos/logback/core/AppenderBase;->statusRepeatCount:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lch/qos/logback/core/AppenderBase;->statusRepeatCount:I

    if-ge p1, v0, :cond_1

    new-instance p1, Lch/qos/logback/core/status/WarnStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to append to non started appender ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lch/qos/logback/core/AppenderBase;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    :try_start_2
    iput-boolean v2, p0, Lch/qos/logback/core/AppenderBase;->guard:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_2
    :try_start_3
    invoke-virtual {p0, p1}, Lch/qos/logback/core/AppenderBase;->getFilterChainDecision(Ljava/lang/Object;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v1

    sget-object v3, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v1, v3, :cond_3

    :try_start_4
    iput-boolean v2, p0, Lch/qos/logback/core/AppenderBase;->guard:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :cond_3
    :try_start_5
    invoke-virtual {p0, p1}, Lch/qos/logback/core/AppenderBase;->append(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :goto_1
    :try_start_6
    iput-boolean v2, p0, Lch/qos/logback/core/AppenderBase;->guard:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :goto_2
    :try_start_7
    iget v1, p0, Lch/qos/logback/core/AppenderBase;->exceptionCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lch/qos/logback/core/AppenderBase;->exceptionCount:I

    if-ge v1, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Appender ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/qos/logback/core/AppenderBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] failed to append."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_8
    iput-boolean v2, p0, Lch/qos/logback/core/AppenderBase;->guard:Z

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public getCopyOfAttachedFiltersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/qos/logback/core/filter/Filter;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/AppenderBase;->fai:Lch/qos/logback/core/spi/FilterAttachableImpl;

    invoke-virtual {v0}, Lch/qos/logback/core/spi/FilterAttachableImpl;->getCopyOfAttachedFiltersList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFilterChainDecision(Ljava/lang/Object;)Lch/qos/logback/core/spi/FilterReply;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lch/qos/logback/core/spi/FilterReply;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/AppenderBase;->fai:Lch/qos/logback/core/spi/FilterAttachableImpl;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/FilterAttachableImpl;->getFilterChainDecision(Ljava/lang/Object;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/AppenderBase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lch/qos/logback/core/AppenderBase;->started:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lch/qos/logback/core/AppenderBase;->name:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/AppenderBase;->started:Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/AppenderBase;->started:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/qos/logback/core/AppenderBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
