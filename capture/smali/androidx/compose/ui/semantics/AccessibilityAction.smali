.class public final Landroidx/compose/ui/semantics/AccessibilityAction;
.super Ljava/lang/Object;
.source "SemanticsProperties.kt"


# instance fields
.field private final action:Lkotlin/Function;

.field private final label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/Function;)V
    .locals 0

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 438
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    .line 440
    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    iget-object v3, p1, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    .line 441
    iget-object p1, p1, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAction()Lkotlin/Function;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    if-eqz v2, :cond_1

    .line 448
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessibilityAction(label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
