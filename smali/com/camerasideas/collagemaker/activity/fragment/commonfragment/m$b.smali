.class Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;->D0(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;

    invoke-virtual {p1}, Lsm;->u1()V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;->y1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;->D1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lc2;->q(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$b;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;->E1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/camerasideas/collagemaker/appdata/f;->l(Landroid/content/Context;Z)V

    return-void
.end method
