.class public Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private final ephemeralPrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private final ephemeralPublicPoint:Lorg/bouncycastle/math/ec/ECPoint;

.field private final initiator:Z

.field private final staticPrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private final staticPublicPoint:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v1}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->initiator:Z

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->staticPrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->staticPublicPoint:Lorg/bouncycastle/math/ec/ECPoint;

    iput-object p3, p0, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->ephemeralPrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->ephemeralPublicPoint:Lorg/bouncycastle/math/ec/ECPoint;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Static and ephemeral private keys have different domain parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ephemeralPrivateKey cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "staticPrivateKey cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getEphemeralPrivateKey()Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->ephemeralPrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    return-object v0
.end method

.method public getEphemeralPublicPoint()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->ephemeralPublicPoint:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getStaticPrivateKey()Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->staticPrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    return-object v0
.end method

.method public getStaticPublicPoint()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->staticPublicPoint:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public isInitiator()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->initiator:Z

    return v0
.end method
