.class Ln4$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln4$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Lm4;Li4$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li4$a;

.field final synthetic b:[Lm4;


# direct methods
.method constructor <init>(Li4$a;[Lm4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln4$a$a;->a:Li4$a;

    iput-object p2, p0, Ln4$a$a;->b:[Lm4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln4$a$a;->a:Li4$a;

    iget-object v1, p0, Ln4$a$a;->b:[Lm4;

    invoke-static {v1, p1}, Ln4$a;->o([Lm4;Landroid/database/sqlite/SQLiteDatabase;)Lm4;

    move-result-object p1

    invoke-virtual {v0, p1}, Li4$a;->b(Lh4;)V

    return-void
.end method
