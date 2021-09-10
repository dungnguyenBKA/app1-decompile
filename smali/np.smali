.class public final synthetic Lnp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lyp;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lyp;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnp;->b:Lyp;

    iput-object p2, p0, Lnp;->c:Landroid/app/Activity;

    iput-object p3, p0, Lnp;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lnp;->b:Lyp;

    iget-object v1, p0, Lnp;->c:Landroid/app/Activity;

    iget-object v2, p0, Lnp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lyp;->N(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
