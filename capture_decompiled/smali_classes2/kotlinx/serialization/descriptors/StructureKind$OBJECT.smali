.class public final Lkotlinx/serialization/descriptors/StructureKind$OBJECT;
.super Lkotlinx/serialization/descriptors/StructureKind;
.source "SerialKinds.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/descriptors/StructureKind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OBJECT"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$OBJECT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lkotlinx/serialization/descriptors/StructureKind$OBJECT;

    invoke-direct {v0}, Lkotlinx/serialization/descriptors/StructureKind$OBJECT;-><init>()V

    sput-object v0, Lkotlinx/serialization/descriptors/StructureKind$OBJECT;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$OBJECT;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, v0}, Lkotlinx/serialization/descriptors/StructureKind;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
