.class public Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/etsi102941/CrlEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry$Builder;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs addCrlEntry([Lorg/bouncycastle/oer/its/etsi102941/CrlEntry;)Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry$Builder;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry$Builder;->items:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;
    .locals 2

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry$Builder;->items:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;-><init>(Ljava/util/List;)V

    return-object v0
.end method
