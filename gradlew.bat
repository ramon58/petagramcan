package com.ramoncarrion.petagrammascota;

import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    ArrayList<Mascota> contactos;
    private RecyclerView listaMascotas;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Toolbar miActionBar = (Toolbar) findViewById(R.id.miActionBar);
        setSupportActionBar(miActionBar);

        listaMascotas = (RecyclerView) findViewById(R.id.rvContactos);

        LinearLayoutManager llm = new LinearLayoutManager(this);
        llm.setOrientation(LinearLayoutManager.VERTICAL);

        listaMascotas.setLayoutManager(llm);
        inicializarListaContactos();
        inicializarAdaptador();

    }
    public MascotaAdaptador adaptador;
    public void inicializarAdaptador() {
        adaptador = new MascotaAdaptador(contactos, this);
        listaMascotas.setAdapter(adaptador);
    }

    public void inicializarListaContactos(){
        contactos = new ArrayList <Mascota>();
        contactos.add(new Mascota(R.drawable.perro_uno, "Nube","5","ramoncarrionbou@gmail.com"));
        contactos.add(new Mascota(R.drawable.perro_dos, "Leo","3","n.ortegalopez@gmail.com"));
        contactos.add(new Mascota(R.drawable.perro_tres, "Brian Johnson","629946407","mercekoyoto@gmail.com"));
        contactos.add(new Mascota(R.drawable.perro_cuatro, "Malcom Young","656276504","epascual@trainingit.es"));
        contactos.add(new Mascota(R.drawable.perro_cinco, "Tom","5","silvia.carrion.ortega@hotmail.com"));

    }
}                                                                                                                                                                                                                                                                                                                                                                                  