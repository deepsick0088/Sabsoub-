.class public final Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

.field private bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

.field private leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private topEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

.field private topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private topRightCornerSize:Lcom/google/android/material/shape/CornerSize;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 51
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 54
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 57
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 59
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 60
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 61
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 62
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 64
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 65
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 66
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 67
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 51
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 54
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 57
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 59
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 60
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 61
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 62
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 64
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 65
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 66
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 67
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 72
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 73
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 74
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 75
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 77
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 78
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 79
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 80
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 82
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 83
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 84
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 85
    iget-object p1, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object p0
.end method

.method private static compatCornerTreatmentSize(Lcom/google/android/material/shape/CornerTreatment;)F
    .locals 1

    .line 448
    instance-of v0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_0

    .line 449
    check-cast p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    iget p0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;->radius:F

    return p0

    .line 450
    :cond_0
    instance-of v0, p0, Lcom/google/android/material/shape/CutCornerTreatment;

    if-eqz v0, :cond_1

    .line 451
    check-cast p0, Lcom/google/android/material/shape/CutCornerTreatment;

    iget p0, p0, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    return p0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 2

    .line 459
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;Lcom/google/android/material/shape/ShapeAppearanceModel$1;)V

    return-object v0
.end method

.method public setAllCornerSizes(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 136
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAllCornerSizes(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBottomLeftCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 0

    .line 363
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    .line 364
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBottomLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 377
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->compatCornerTreatmentSize(Lcom/google/android/material/shape/CornerTreatment;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    :cond_0
    return-object p0
.end method

.method public setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 194
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public setBottomRightCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 0

    .line 318
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    .line 319
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBottomRightCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 332
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->compatCornerTreatmentSize(Lcom/google/android/material/shape/CornerTreatment;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    :cond_0
    return-object p0
.end method

.method public setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 178
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public setTopLeftCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 0

    .line 229
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    .line 230
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTopLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 243
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->compatCornerTreatmentSize(Lcom/google/android/material/shape/CornerTreatment;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    :cond_0
    return-object p0
.end method

.method public setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 146
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public setTopRightCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 0

    .line 273
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    .line 274
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTopRightCorner(Lcom/google/android/material/shape/CornerTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 287
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->compatCornerTreatmentSize(Lcom/google/android/material/shape/CornerTreatment;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    :cond_0
    return-object p0
.end method

.method public setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 162
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method
