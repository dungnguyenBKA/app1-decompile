.class public Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcn/dreamtobe/kpswitch/b;


# instance fields
.field private b:Lr6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lr6;

    invoke-direct {p1, p0}, Lr6;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelRelativeLayout;->b:Lr6;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lr6;

    invoke-direct {p1, p0}, Lr6;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelRelativeLayout;->b:Lr6;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/dreamtobe/kpswitch/widget/KPSwitchFSPanelRelativeLayout;->b:Lr6;

    invoke-virtual {v0, p1}, Lr6;->a(Z)V

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lu6;->f(Landroid/view/View;I)Z

    return-void
.end method
