.class final Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$7;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/bc/BcDigestProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;->createTable()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;
    .locals 1

    .line 0
    new-instance p1, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v0, 0x100

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    return-object p1
.end method
