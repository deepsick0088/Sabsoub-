.class interface abstract Lcom/bumptech/glide/load/resource/bitmap/ImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageReader$ByteBufferReader;
    }
.end annotation


# virtual methods
.method public abstract decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public abstract getImageOrientation()I
.end method

.method public abstract getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
.end method

.method public abstract stopGrowingBuffers()V
.end method
