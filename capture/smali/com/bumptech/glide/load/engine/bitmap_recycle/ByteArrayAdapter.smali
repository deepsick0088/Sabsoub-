.class public final Lcom/bumptech/glide/load/engine/bitmap_recycle/ByteArrayAdapter;
.super Ljava/lang/Object;
.source "ByteArrayAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getArrayLength(Ljava/lang/Object;)I
    .locals 0

    .line 4
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ByteArrayAdapter;->getArrayLength([B)I

    move-result p1

    return p1
.end method

.method public getArrayLength([B)I
    .locals 0

    .line 15
    array-length p1, p1

    return p1
.end method

.method public getElementSizeInBytes()I
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "ByteArrayPool"

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ByteArrayAdapter;->newArray(I)[B

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[B
    .locals 0

    .line 20
    new-array p1, p1, [B

    return-object p1
.end method
