.class Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080224

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;

    invoke-virtual {p1}, Lsm;->u1()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080260

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;

    invoke-virtual {p1}, Lsm;->u1()V

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;->y1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/camerasideas/collagemaker/appdata/f;->l(Landroid/content/Context;Z)V

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;->z1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;)Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/k;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroidx/fragment/app/Fragment;->Y(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lsm;

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/p;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsm;->x1(Landroidx/fragment/app/g;)V

    :cond_1
    :goto_0
    return-void
.end method
