.class public Lorg/bouncycastle/asn1/eac/UnsignedInteger;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private tagNo:I

.field private value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->tagNo:I

    iput-object p2, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->value:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->tagNo:I

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->value:Ljava/math/BigInteger;

    return-void
.end method

.method private convertValue()[B
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    if-nez v2, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v4, v2, [B

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/UnsignedInteger;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getTagNo()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->tagNo:I

    return v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->tagNo:I

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {p0}, Lorg/bouncycastle/asn1/eac/UnsignedInteger;->convertValue()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
