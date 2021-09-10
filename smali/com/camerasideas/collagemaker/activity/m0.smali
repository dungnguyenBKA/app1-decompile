.class public final synthetic Lcom/camerasideas/collagemaker/activity/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/SettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/SettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/m0;->b:Lcom/camerasideas/collagemaker/activity/SettingActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/m0;->b:Lcom/camerasideas/collagemaker/activity/SettingActivity;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TesterLog-Setting"

    const-string v1, "\u70b9\u51fbBack\u6309\u94ae"

    .line 2
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->return2MainActivity()V

    return-void
.end method
