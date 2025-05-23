.class public Lorg/bouncycastle/crypto/params/ECDHUPublicParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private ephemeralPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

.field private staticPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/ECDHUPublicParameters;->staticPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/ECDHUPublicParameters;->ephemeralPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "static and ephemeral public keys have different domain parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ephemeralPublicKey cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "staticPublicKey cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ECDHUPublicParameters;->ephemeralPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-object v0
.end method

.method public getStaticPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ECDHUPublicParameters;->staticPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-object v0
.end method
