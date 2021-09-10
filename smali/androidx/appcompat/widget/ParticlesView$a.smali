.class Landroidx/appcompat/widget/ParticlesView$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ParticlesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ParticlesView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ParticlesView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ParticlesView$a;->a:Landroidx/appcompat/widget/ParticlesView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/ParticlesView$a;->a:Landroidx/appcompat/widget/ParticlesView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/ParticlesView$a;->a:Landroidx/appcompat/widget/ParticlesView;

    invoke-static {p1}, Landroidx/appcompat/widget/ParticlesView;->a(Landroidx/appcompat/widget/ParticlesView;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
