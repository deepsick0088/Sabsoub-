.class final Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Strings.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/StringsKt__StringsKt;->rangesDelimitedBy$StringsKt__StringsKt(Ljava/lang/CharSequence;[CIZI)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $delimiters:[C

.field final synthetic $ignoreCase:Z


# direct methods
.method constructor <init>([CZ)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$1;->$delimiters:[C

    iput-boolean p2, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$1;->$ignoreCase:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1242
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$1;->invoke(Ljava/lang/CharSequence;I)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/CharSequence;I)Lkotlin/Pair;
    .locals 2

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$1;->$delimiters:[C

    iget-boolean v1, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$1;->$ignoreCase:Z

    .line 1243
    invoke-static {p1, v0, p2, v1}, Lkotlin/text/StringsKt__StringsKt;->indexOfAny(Ljava/lang/CharSequence;[CIZ)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    :goto_0
    return-object p1
.end method
