.class public final Lkotlinx/serialization/descriptors/PrimitiveKind$CHAR;
.super Lkotlinx/serialization/descriptors/PrimitiveKind;
.source "SerialKinds.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/descriptors/PrimitiveKind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CHAR"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/descriptors/PrimitiveKind$CHAR;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lkotlinx/serialization/descriptors/PrimitiveKind$CHAR;

    invoke-direct {v0}, Lkotlinx/serialization/descriptors/PrimitiveKind$CHAR;-><init>()V

    sput-object v0, Lkotlinx/serialization/descriptors/PrimitiveKind$CHAR;->INSTANCE:Lkotlinx/serialization/descriptors/PrimitiveKind$CHAR;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Lkotlinx/serialization/descriptors/PrimitiveKind;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
