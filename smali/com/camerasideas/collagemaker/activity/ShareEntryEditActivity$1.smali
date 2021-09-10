.class Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;
.super Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity;->o(Landroid/net/Uri;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final c:Landroid/view/View$OnClickListener;

.field final d:Landroid/content/DialogInterface$OnCancelListener;

.field final e:Landroid/content/DialogInterface$OnDismissListener;

.field final f:Landroid/view/View$OnClickListener;

.field final synthetic g:Landroid/net/Uri;

.field final synthetic h:Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;->h:Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;->g:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;-><init>()V

    .line 2
    new-instance p1, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$a;

    invoke-direct {p1, p0}, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$a;-><init>(Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;->c:Landroid/view/View$OnClickListener;

    .line 3
    new-instance p1, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$b;

    invoke-direct {p1, p0}, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$b;-><init>(Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;->d:Landroid/content/DialogInterface$OnCancelListener;

    .line 4
    new-instance p1, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$c;

    invoke-direct {p1, p0}, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$c;-><init>(Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;->e:Landroid/content/DialogInterface$OnDismissListener;

    .line 5
    new-instance p1, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$d;

    invoke-direct {p1, p0}, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1$d;-><init>(Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;->f:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public b()Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;->d:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method public c()Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;->e:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method public e()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;->f:Landroid/view/View$OnClickListener;

    return-object v0
.end method
