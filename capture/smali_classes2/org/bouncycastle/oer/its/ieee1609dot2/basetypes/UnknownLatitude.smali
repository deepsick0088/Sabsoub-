.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;
.super Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Latitude;


# static fields
.field public static INSTANCE:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;-><init>()V

    sput-object v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;->INSTANCE:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 0
    const-wide/32 v0, 0x35a4e901

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Latitude;-><init>(J)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;
    .locals 3

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const v1, 0x35a4e901

    if-ne v0, v1, :cond_1

    sget-object p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;->INSTANCE:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not unknown value of 900000001"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
