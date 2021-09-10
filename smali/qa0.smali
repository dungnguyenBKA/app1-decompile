.class public abstract Lqa0;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqa0$b;,
        Lqa0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lqa0$a;

.field protected final b:Lqa0$b;


# direct methods
.method public constructor <init>(Lqa0$b;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lqa0;->b:Lqa0$b;

    return-void
.end method


# virtual methods
.method public a(Lqa0$a;)V
    .locals 0

    iput-object p1, p0, Lqa0;->a:Lqa0$a;

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lqa0;->a:Lqa0$a;

    if-eqz p1, :cond_0

    check-cast p1, Lra0;

    invoke-virtual {p1, p0}, Lra0;->b(Lqa0;)V

    :cond_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lqa0;->b(Ljava/lang/String;)V

    return-void
.end method
