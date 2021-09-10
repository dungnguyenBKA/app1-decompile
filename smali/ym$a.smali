.class public Lym$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lym;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private b:Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

.field private c:I

.field private d:Lxm$a;


# direct methods
.method public constructor <init>(Lxm$a;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lym$a;->c:I

    .line 3
    iput-object p2, p0, Lym$a;->b:Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    .line 4
    iput p3, p0, Lym$a;->c:I

    .line 5
    iput-object p1, p0, Lym$a;->d:Lxm$a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lym$a;->d:Lxm$a;

    if-eqz p1, :cond_0

    const-string p1, "sclick:button-click"

    invoke-static {p1}, Ljm;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lym$a;->d:Lxm$a;

    iget-object v0, p0, Lym$a;->b:Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    iget v1, p0, Lym$a;->c:I

    check-cast p1, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {p1, v0, v1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->y(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;I)V

    :cond_0
    return-void
.end method
