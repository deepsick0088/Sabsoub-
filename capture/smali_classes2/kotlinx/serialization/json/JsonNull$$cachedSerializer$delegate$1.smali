.class final Lkotlinx/serialization/json/JsonNull$$cachedSerializer$delegate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "JsonElement.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/JsonNull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonNull$$cachedSerializer$delegate$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lkotlinx/serialization/json/JsonNull$$cachedSerializer$delegate$1;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonNull$$cachedSerializer$delegate$1;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonNull$$cachedSerializer$delegate$1;->INSTANCE:Lkotlinx/serialization/json/JsonNull$$cachedSerializer$delegate$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonNull$$cachedSerializer$delegate$1;->invoke()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 111
    sget-object v0, Lkotlinx/serialization/json/JsonNullSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonNullSerializer;

    return-object v0
.end method
