.class public Lorg/bouncycastle/asn1/isismtt/x509/Restriction;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private restriction:Lorg/bouncycastle/asn1/x500/DirectoryString;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/Restriction;->restriction:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/x500/DirectoryString;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/Restriction;->restriction:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/isismtt/x509/Restriction;
    .locals 1

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/Restriction;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/isismtt/x509/Restriction;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/isismtt/x509/Restriction;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/isismtt/x509/Restriction;-><init>(Lorg/bouncycastle/asn1/x500/DirectoryString;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getRestriction()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/Restriction;->restriction:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/Restriction;->restriction:Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/DirectoryString;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
