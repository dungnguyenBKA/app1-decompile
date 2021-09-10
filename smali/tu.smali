.class final synthetic Ltu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$d;


# instance fields
.field private final a:Liv;


# direct methods
.method private constructor <init>(Liv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltu;->a:Liv;

    return-void
.end method

.method public static b(Liv;)Lcv$d;
    .locals 1

    new-instance v0, Ltu;

    invoke-direct {v0, p0}, Ltu;-><init>(Liv;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ltu;->a:Liv;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
