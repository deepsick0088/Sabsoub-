.class public Lch/qos/logback/core/util/COWArrayList;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/List;


# instance fields
.field fresh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final modelArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field ourCopy:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->fresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lch/qos/logback/core/util/COWArrayList;->modelArray:[Ljava/lang/Object;

    return-void
.end method

.method private isFresh()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->fresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private markAsStale()V
    .locals 2

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->fresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private refreshCopy()V
    .locals 2

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lch/qos/logback/core/util/COWArrayList;->modelArray:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->ourCopy:[Ljava/lang/Object;

    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->fresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private refreshCopyIfNecessary()V
    .locals 1

    .line 0
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->isFresh()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->refreshCopy()V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    return p1
.end method

.method public addIfAbsent(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    return-void
.end method

.method public asTypedArray()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->refreshCopyIfNecessary()V

    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->ourCopy:[Ljava/lang/Object;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->refreshCopyIfNecessary()V

    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->ourCopy:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->refreshCopyIfNecessary()V

    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->ourCopy:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->refreshCopyIfNecessary()V

    iget-object p1, p0, Lch/qos/logback/core/util/COWArrayList;->ourCopy:[Ljava/lang/Object;

    return-object p1
.end method
