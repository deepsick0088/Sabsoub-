.class public Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/MacDerivationFunction;


# static fields
.field private static final INTEGER_MAX:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private fixedInputData:[B

.field private generatedBytes:I

.field private final h:I

.field private ios:[B

.field private iv:[B

.field private k:[B

.field private maxSizeExcl:I

.field private final prf:Lorg/bouncycastle/crypto/Mac;

.field private useCounter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Mac;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    return-void
.end method

.method private generateNext()V
    .locals 8

    .line 0
    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->iv:[B

    array-length v3, v2

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    array-length v3, v2

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :goto_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->useCounter:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    iget v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    div-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    array-length v4, v3

    if-eq v4, v2, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    const/4 v7, 0x4

    if-ne v4, v7, :cond_1

    ushr-int/lit8 v4, v0, 0x18

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported size of counter i"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    array-length v4, v3

    sub-int/2addr v4, v6

    ushr-int/lit8 v6, v0, 0x10

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    :cond_3
    array-length v4, v3

    sub-int/2addr v4, v5

    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    :cond_4
    array-length v4, v3

    sub-int/2addr v4, v2

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    array-length v2, v3

    invoke-interface {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->fixedInputData:[B

    array-length v3, v2

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 0
    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    add-int v1, v0, p3

    if-ltz v1, :cond_2

    iget v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->maxSizeExcl:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generateNext()V

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    rem-int v2, v0, v1

    rem-int/2addr v0, v1

    sub-int/2addr v1, v0

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    sub-int v1, p3, v0

    :goto_0
    add-int/2addr p2, v0

    if-lez v1, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generateNext()V

    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Current KDFCTR may only be used for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->maxSizeExcl:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMac()Lorg/bouncycastle/crypto/Mac;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 5

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->getKI()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->getFixedInputData()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->fixedInputData:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->getR()I

    move-result v0

    div-int/lit8 v1, v0, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->useCounter()Z

    move-result v1

    const v2, 0x7fffffff

    if-eqz v1, :cond_1

    sget-object v1, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    :cond_1
    :goto_0
    iput v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->maxSizeExcl:I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->iv:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->useCounter()Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->useCounter:Z

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong type of arguments given"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
