.class public final synthetic Lcom/camerasideas/collagemaker/activity/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/SettingActivity;

.field public final synthetic c:Landroidx/appcompat/widget/AppCompatRadioButton;

.field public final synthetic d:Landroidx/appcompat/widget/AppCompatRadioButton;

.field public final synthetic e:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/SettingActivity;Landroidx/appcompat/widget/AppCompatRadioButton;Landroidx/appcompat/widget/AppCompatRadioButton;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/q0;->b:Lcom/camerasideas/collagemaker/activity/SettingActivity;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/q0;->c:Landroidx/appcompat/widget/AppCompatRadioButton;

    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/q0;->d:Landroidx/appcompat/widget/AppCompatRadioButton;

    iput-object p4, p0, Lcom/camerasideas/collagemaker/activity/q0;->e:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/q0;->b:Lcom/camerasideas/collagemaker/activity/SettingActivity;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/q0;->c:Landroidx/appcompat/widget/AppCompatRadioButton;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/q0;->d:Landroidx/appcompat/widget/AppCompatRadioButton;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/q0;->e:Landroid/app/Dialog;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/camerasideas/collagemaker/activity/SettingActivity;->p(Landroidx/appcompat/widget/AppCompatRadioButton;Landroidx/appcompat/widget/AppCompatRadioButton;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
