.class public abstract Lcom/google/android/material/internal/ToolbarUtils;
.super Ljava/lang/Object;
.source "ToolbarUtils.java"


# static fields
.field private static final VIEW_TOP_COMPARATOR:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/google/android/material/internal/ToolbarUtils$1;

    invoke-direct {v0}, Lcom/google/android/material/internal/ToolbarUtils$1;-><init>()V

    sput-object v0, Lcom/google/android/material/internal/ToolbarUtils;->VIEW_TOP_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private static getImageView(Landroidx/appcompat/widget/Toolbar;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 96
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 97
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 98
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 99
    check-cast v2, Landroid/widget/ImageView;

    .line 100
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 103
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getLogoImageView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageView;
    .locals 1

    .line 88
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ToolbarUtils;->getImageView(Landroidx/appcompat/widget/Toolbar;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static getSubtitleTextView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;
    .locals 1

    .line 68
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ToolbarUtils;->getTextViewsWithText(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    .line 69
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/internal/ToolbarUtils;->VIEW_TOP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    :goto_0
    return-object p0
.end method

.method private static getTextViewsWithText(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 4

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 74
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 75
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 76
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 77
    check-cast v2, Landroid/widget/TextView;

    .line 78
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getTitleTextView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ToolbarUtils;->getTextViewsWithText(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    .line 63
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/internal/ToolbarUtils;->VIEW_TOP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    :goto_0
    return-object p0
.end method
