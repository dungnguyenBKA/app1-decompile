.class public Lcom/camerasideas/baseutils/widget/SpeedRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public fling(II)Z
    .locals 2

    const/16 v0, 0x1f40

    const/16 v1, -0x1f40

    if-lez p1, :cond_0

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-lez p2, :cond_1

    .line 3
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5
    :goto_1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p1

    return p1
.end method
