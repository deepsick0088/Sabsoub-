.class final Lorg/fdroid/download/Mirror$url$2$log$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Mirror.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/Mirror$url$2;->invoke()Lio/ktor/http/Url;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/download/Mirror$url$2$log$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/download/Mirror$url$2$log$2;

    invoke-direct {v0}, Lorg/fdroid/download/Mirror$url$2$log$2;-><init>()V

    sput-object v0, Lorg/fdroid/download/Mirror$url$2$log$2;->INSTANCE:Lorg/fdroid/download/Mirror$url$2$log$2;

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

    .line 28
    invoke-virtual {p0}, Lorg/fdroid/download/Mirror$url$2$log$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 0

    .line 0
    return-void
.end method
