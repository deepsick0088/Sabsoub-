.class Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/sphincs/Tree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "leafaddr"
.end annotation


# instance fields
.field level:I

.field subleaf:J

.field subtree:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    return-void
.end method
