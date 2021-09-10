.class public Lcn/dreamtobe/kpswitch/widget/KPSwitchPanelFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcn/dreamtobe/kpswitch/b;
.implements Lcn/dreamtobe/kpswitch/a;


# instance fields
.field private b:Ls6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ls6;

    invoke-direct {p1, p0, p2}, Ls6;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcn/dreamtobe/kpswitch/widget/KPSwitchPanelFrameLayout;->b:Ls6;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ls6;

    invoke-direct {p1, p0, p2}, Ls6;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcn/dreamtobe/kpswitch/widget/KPSwitchPanelFrameLayout;->b:Ls6;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/dreamtobe/kpswitch/widget/KPSwitchPanelFrameLayout;->b:Ls6;

    invoke-virtual {v0, p1}, Ls6;->g(Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/dreamtobe/kpswitch/widget/KPSwitchPanelFrameLayout;->b:Ls6;

    invoke-virtual {v0}, Ls6;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/dreamtobe/kpswitch/widget/KPSwitchPanelFrameLayout;->b:Ls6;

    invoke-virtual {v0}, Ls6;->c()V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/dreamtobe/kpswitch/widget/KPSwitchPanelFrameLayout;->b:Ls6;

    invoke-virtual {v0, p1}, Ls6;->f(I)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/dreamtobe/kpswitch/widget/KPSwitchPanelFrameLayout;->b:Ls6;

    invoke-virtual {v0}, Ls6;->isVisible()Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/dreamtobe/kpswitch/widget/KPSwitchPanelFrameLayout;->b:Ls6;

    invoke-virtual {v0, p1, p2}, Ls6;->d(II)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/dreamtobe/kpswitch/widget/KPSwitchPanelFrameLayout;->b:Ls6;

    invoke-virtual {v0, p1}, Ls6;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
