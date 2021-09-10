.class public final synthetic Lcom/camerasideas/collagemaker/activity/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linshot/collage/adconfig/h$c;


# instance fields
.field public final synthetic a:Lcom/camerasideas/collagemaker/activity/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/j0;->a:Lcom/camerasideas/collagemaker/activity/MainActivity;

    return-void
.end method


# virtual methods
.method public final a(Linshot/collage/adconfig/i;)V
    .locals 3

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/j0;->a:Lcom/camerasideas/collagemaker/activity/MainActivity;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v1, Linshot/collage/adconfig/i;->b:Linshot/collage/adconfig/i;

    if-ne p1, v1, :cond_0

    .line 3
    invoke-static {v0}, Landroidx/core/app/b;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08016d

    .line 4
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 5
    sget-object v1, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    iget-object v0, v0, Lcom/camerasideas/collagemaker/activity/MainActivity;->mCardAdLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, p1}, Linshot/collage/adconfig/h;->n(Landroid/widget/FrameLayout;Linshot/collage/adconfig/i;)Z

    :cond_0
    return-void
.end method
