.class final Lorg/fdroid/index/IndexConverter$toIndexV2$1$whatsNew$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IndexConverter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/index/IndexConverter;->toIndexV2(Lorg/fdroid/index/v1/IndexV1;)Lorg/fdroid/index/v2/IndexV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/index/IndexConverter$toIndexV2$1$whatsNew$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/index/IndexConverter$toIndexV2$1$whatsNew$1;

    invoke-direct {v0}, Lorg/fdroid/index/IndexConverter$toIndexV2$1$whatsNew$1;-><init>()V

    sput-object v0, Lorg/fdroid/index/IndexConverter$toIndexV2$1$whatsNew$1;->INSTANCE:Lorg/fdroid/index/IndexConverter$toIndexV2$1$whatsNew$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/fdroid/index/IndexConverter$toIndexV2$1$whatsNew$1;->invoke(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/v1/Localized;

    invoke-virtual {p1}, Lorg/fdroid/index/v1/Localized;->getWhatsNew()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
