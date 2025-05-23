.class public Lorg/bouncycastle/crypto/params/DHUPrivateParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private ephemeralPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

.field private ephemeralPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

.field private staticPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/params/DHUPrivateParameters;-><init>(Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)V
    .locals 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p3, :cond_0

    new-instance p3, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p3, v1, v0}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/DHUPrivateParameters;->staticPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/DHUPrivateParameters;->ephemeralPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iput-object p3, p0, Lorg/bouncycastle/crypto/params/DHUPrivateParameters;->ephemeralPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ephemeral public key has different domain parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "static and ephemeral private keys have different domain parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ephemeralPrivateKey cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "staticPrivateKey cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getEphemeralPrivateKey()Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHUPrivateParameters;->ephemeralPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    return-object v0
.end method

.method public getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHUPrivateParameters;->ephemeralPublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    return-object v0
.end method

.method public getStaticPrivateKey()Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DHUPrivateParameters;->staticPrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    return-object v0
.end method
