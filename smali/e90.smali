.class public final Le90;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lca0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lca0;

    invoke-direct {v0}, Lca0;-><init>()V

    sput-object v0, Le90;->a:Lca0;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Le90;->a:Lca0;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lca0;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Le90;->a:Lca0;

    invoke-virtual {v0}, Lca0;->b()Z

    move-result v0

    return v0
.end method
