.class Landroidx/collection/ArraySet$1;
.super Landroidx/collection/MapCollections;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/ArraySet;->getCollection()Landroidx/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/collection/ArraySet;


# direct methods
.method constructor <init>(Landroidx/collection/ArraySet;)V
    .locals 0

    iput-object p1, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    .line 635
    invoke-direct {p0}, Landroidx/collection/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 1

    iget-object v0, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    .line 678
    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 0

    iget-object p2, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    .line 643
    iget-object p2, p2, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 2

    .line 658
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected colGetSize()I
    .locals 1

    iget-object v0, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    .line 638
    iget v0, v0, Landroidx/collection/ArraySet;->mSize:I

    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    .line 648
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    .line 653
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    .line 663
    invoke-virtual {p2, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 1

    iget-object v0, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    .line 673
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 668
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
