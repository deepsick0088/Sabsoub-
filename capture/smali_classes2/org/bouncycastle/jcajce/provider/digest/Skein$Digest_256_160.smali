.class public Lorg/bouncycastle/jcajce/provider/digest/Skein$Digest_256_160;
.super Lorg/bouncycastle/jcajce/provider/digest/Skein$DigestSkein256;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/Skein;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest_256_160"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    const/16 v0, 0xa0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/Skein$DigestSkein256;-><init>(I)V

    return-void
.end method
