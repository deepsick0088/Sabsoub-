.class public Lorg/bouncycastle/asn1/smime/SMIMECapabilityVector;
.super Ljava/lang/Object;


# instance fields
.field private capabilities:Lorg/bouncycastle/asn1/ASN1EncodableVector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->capabilities:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    return-void
.end method


# virtual methods
.method public addCapability(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->capabilities:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public addCapability(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I)V
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p2

    invoke-direct {p1, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object p1, p0, Lorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->capabilities:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance p2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public addCapability(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object p1, p0, Lorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->capabilities:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance p2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->capabilities:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    return-object v0
.end method
