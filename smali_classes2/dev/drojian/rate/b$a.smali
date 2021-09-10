.class Ldev/drojian/rate/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/drojian/rate/b;->e(Landroid/content/Context;Lbd0;Led0;Ldd0;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Led0;


# direct methods
.method constructor <init>(Ldev/drojian/rate/b;Led0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ldev/drojian/rate/b$a;->b:Led0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/drojian/rate/b$a;->b:Led0;

    invoke-virtual {v0}, Led0;->i()V

    return-void
.end method
