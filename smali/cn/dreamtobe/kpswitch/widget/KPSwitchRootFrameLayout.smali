.class public Lcn/dreamtobe/kpswitch/widget/KPSwitchRootFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private b:Lt6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lt6;

    invoke-direct {p1, p0}, Lt6;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcn/dreamtobe/kpswitch/widget/KPSwitchRootFrameLayout;->b:Lt6;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lt6;

    invoke-direct {p1, p0}, Lt6;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcn/dreamtobe/kpswitch/widget/KPSwitchRootFrameLayout;->b:Lt6;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/dreamtobe/kpswitch/widget/KPSwitchRootFrameLayout;->b:Lt6;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 3
    invoke-virtual {v0, v1, v2}, Lt6;->b(II)V

    .line 4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
