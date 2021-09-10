.class public final synthetic Lcom/camerasideas/collagemaker/activity/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/camerasideas/collagemaker/activity/widget/n$e;


# instance fields
.field public final synthetic a:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/b;->a:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    return-void
.end method


# virtual methods
.method public final a(Lcom/camerasideas/collagemaker/activity/widget/n;)V
    .locals 2

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/b;->a:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/n;->e()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method
