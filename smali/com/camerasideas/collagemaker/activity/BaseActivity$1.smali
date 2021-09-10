.class Lcom/camerasideas/collagemaker/activity/BaseActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/BaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseActivity$1;->a:Lcom/camerasideas/collagemaker/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroidx/lifecycle/i;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/b;->c(Landroidx/lifecycle/c;Landroidx/lifecycle/i;)V

    return-void
.end method

.method public b(Landroidx/lifecycle/i;)V
    .locals 0

    return-void
.end method

.method public synthetic d(Landroidx/lifecycle/i;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/b;->b(Landroidx/lifecycle/c;Landroidx/lifecycle/i;)V

    return-void
.end method

.method public synthetic e(Landroidx/lifecycle/i;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/b;->d(Landroidx/lifecycle/c;Landroidx/lifecycle/i;)V

    return-void
.end method

.method public synthetic f(Landroidx/lifecycle/i;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/b;->a(Landroidx/lifecycle/c;Landroidx/lifecycle/i;)V

    return-void
.end method

.method public g(Landroidx/lifecycle/i;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseActivity$1;->a:Lcom/camerasideas/collagemaker/activity/BaseActivity;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->notchFit()V

    return-void
.end method
